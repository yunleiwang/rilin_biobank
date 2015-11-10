/*// JavaScript Document
$(document).ready(function(){
    $(".r_equipment").hide();
})
$(function(){
	*//*存储空间二级菜单显隐*//*
    $(".r_save_space_tittle").click(function(){
        $("#nav > li").removeClass("open");
	    $(".r_equipment").toggle(300);
    });
	*//*存储空间三级菜单显隐*//*
	*//*点按钮*//*
	$(".r_shelf_box li").click(function(){
		*//*哪个a？*//*
		var n = $(".r_shelf_box li").index($(this));
		*//*所有内容都隐藏*//*
		$(".r_box_nav_box").hide(300);
		*//*让对应的内容显示*//*
		$(".r_box_nav_box").eq(n).show(300);
		*//*所有的按钮都去掉currentA*//*
		$(".r_shelf_box li").removeClass("r_shelf_name_on");
		*//*给点击的按钮加上currentA*//*
		$(this).addClass("r_shelf_name_on");
	});
	*//*右侧有项目后点添加项目击*//*
	$(".r_add_btn").click(function(){
		*//*所有内容都隐藏*//*
		$(".r_add_equipment_box").slideDown();
	$(".off_add_equipment").click(function(){
		*//*所有内容都隐藏*//*
		$(".r_add_equipment_box").slideUp();
	});
	});

	$(".r_modify_btn").click(function(){
		*//*所有内容都隐藏*//*
		$(".r_add_equipment_box").slideDown();
	$(".off_add_equipment").click(function(){
		*//*所有内容都隐藏*//*
		$(".r_add_equipment_box").slideUp();
	});
	});
	
})*/


// JavaScript Document

$(function(){
    /*存储空间二级菜单显隐*/
    $(".r_save_space_tittle").click(function(){
        $(".r_equipment").toggle(400);
    });
    /*存储空间三级菜单显隐*/
    $(".pull-right").click(function(){
        /*哪个a？*/
        var n = $(".pull-right").index($(this));
        /*所有内容都隐藏*/
        $(".r_shelf_box").hide(200);
        /*让对应的内容显示*/
        $(".r_shelf_box").eq(n).show(300);
    });
    /*存储空间四级菜单显隐*/
    $(".shelf_arrow").click(function(){
        /*哪个a？*/
        var n = $(".shelf_arrow").index($(this));
        /*所有内容都隐藏*/
        $(".r_box_nav_box").hide(200);
        /*让对应的内容显示*/
        $(".r_box_nav_box").eq(n).show(300);
    });
    /*右侧有项目后点添加项目击*/
    $(".r_add_btn").click(function(){
        /*所有内容都隐藏*/
        $(".r_add_equipment_box").slideDown();
        $(".off_add_equipment").click(function(){
            /*所有内容都隐藏*/
            $(".r_add_equipment_box").slideUp();
        });
    });

    $(".r_modify_btn").click(function(){
        /*所有内容都隐藏*/
        $(".r_add_equipment_box").slideDown();
        $(".off_add_equipment").click(function(){
            /*所有内容都隐藏*/
            $(".r_add_equipment_box").slideUp();
        });
    });

})
	









