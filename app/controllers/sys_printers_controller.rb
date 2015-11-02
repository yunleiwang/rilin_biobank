#encoding=utf-8
#require 'java'
#require 'lib/ZSDK_API.jar'
#require 'lib/zebra_print.jar'
#生成jar包放在lib/lib下    dll放在windows/system32下  调用方式  Java::包命::类名
class SysPrintersController < ApplicationController
  #打印机设置列表
  def setting_index
    @sys_table_columns=SysTableColumn.all()
    @setting1=YAML.load_file(File.join(Rails.root, 'config', 'printer.yml'))
    render :layout => 'templet_form'
  end
  def setting_test
    begin
      setting=params[:setting]
      printer_name=params[:setting][:printer_name]
      zpl_code=%{
        ^XA
        ^LH#{setting[:x]},#{setting[:y]}^FS
        ^FO510,40
        ^A0I,15,20
        ^FD1234^FS
        ^FO510,0^BAR,0,N
        ^BQ1,2,2
        ^FDQA,1111^FS
        ^FO410,50
        ^A0I,18,15
        ^FDarea1^FS
        ^FO410,0^BAN,0,N
        ^BQ1,2,2
        ^FDQA,1111^FS
        ^FO370,30
        ^A0I,13,13
        ^FDarea3^FS
        ^FO370,20
        ^A0I,13,13
        ^FDarea4^FS
        ^FO370,10
        ^A0I,13,13
        ^FDarea5^FS
        ^FO300,0
        ^A0R,13,13
        ^FDarea6^FS
        ^FO370,50
        ^A0I,18,15
        ^FDarea2^FS
        ^XZ
    }
      Java::rilinprinter::SendFileUtil.sendFileToPrinter(printer_name,zpl_code)
      result="success"
    rescue
      result="fail"
    end
    render :json => result
  end
  #更改打印机设置
  def setting_change
    begin
      setting=params[:setting]
      File.open(File.join(Rails.root, 'config', 'printer.yml'), "wb") {|f| YAML.dump(setting, f) }
      result="success"
    rescue
      result="fail"
    end
    render :json=> result
  end
  #打印样本标签
  def print_sample
    begin
      sample_seq=params[:sample_seq]
      sample=Sample.find_by_sample_seq(sample_seq)
      patient_info=sample.patient_case.patient_info
      setting=YAML.load_file(File.join(Rails.root, 'config', 'printer.yml'))
      zpl_code=%{
        ^XA
        ^LH#{setting[:x]},#{setting[:y]}^FS
        ^FO510,45
        ^A0I,15,20
        ^FD#{sample_seq}^FS
        ^FO510,0^BAR,0,N
        ^BQ1,2,2
        ^FDQA,#{sample_seq}^FS
        ^FO410,50
        ^A0I,18,15
        ^FD#{patient_info.patient_id}^FS
        ^FO410,0^BAN,0,N
        ^BQ1,2,2
        ^FDQA,#{sample_seq}^FS
        ^FO370,30
        ^A0I,13,13
        ^FD#{patient_info.patient_id}^FS
        ^FO370,20
        ^A0I,13,13
        ^FD#{patient_info.patient_id}^FS
        ^FO370,10
        ^A0I,13,13
        ^FD#{patient_info.patient_id}^FS
        ^FO300,0
        ^A0R,13,13
        ^FD#{patient_info.patient_id}^FS
        ^FO370,50
        ^A0I,18,15
        ^FD#{patient_info.patient_id}^FS
        ^XZ
    }
      Java::rilinprinter::SendFileUtil.sendFileToPrinter(setting[:printer_name],zpl_code)
      result="success"
    rescue
      result="fail"
    end
    render :nothing=>true
  end

end
