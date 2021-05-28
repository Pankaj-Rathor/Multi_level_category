<?php
require_once 'connection.php';

$category = mysqli_query($con,"SELECT * FROM categories");
$arr = [];
while($row = mysqli_fetch_assoc($category)){
	$arr[$row['id']]['name'] = $row['name'];
	$arr[$row['id']]['parent_id'] = $row['parent_id'];
	$arr[$row['id']]['status'] = $row['status'];
}

	// echo '<pre>';
	// print_r($arr);

$html = "";
function buildTreeView($arr, $parent=0, $level=0, $prelevel=-1){
	global $html;

	foreach ($arr as $id => $value) {
		if($parent == $value['parent_id']){
			
			if($level>$prelevel){
				if($html == ""){
					$html.='<ul class="dropdown-menu">';
				}else{
					$html.='<ul class="dropdown-menu">';
				}
			}

			if($level == $prelevel){
				$html.='</li>';
			}

			$html.='<li class="dropdown-submenu"><a class="test" tabindex="-1" data-id="'.$id.'" data-pid="'.$value['parent_id'].'" style="margin-left:30%;">'.$value['name'].'</a>';
			if($level > $prelevel){
				$prelevel=$level;
			}
			$level++;
			buildTreeView($arr,$id,$level,$prelevel);
			$level--;
		}
	}
	if($level == $prelevel){
		$html.='</li></ul>';
	}

return $html;
}
?>