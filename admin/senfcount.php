<?php
include("ses.php");
include("../config.php");
?>
<html>
<body style="direction:rtl;">
<table>
                            <thead>
                            <tr>
                                <th>عنوان صنف</th>
                                <th>تعداد</th>
                                <th>ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql = "select * from asnaf where `father`=0 order by id desc";
                            $res = mysqli_query($connection, $sql);
                            if(mysqli_num_rows($res) == 0){
                            ?>
                            <tr>
                                <td colspan="4"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                            </tr>
                            <?php }
                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <tr>
                                    <td><?php echo($fild['title']); ?></td>
									<td>
										<?php
											$sid=$fild['id'];
											$sqlc="select * from users where `senfid`=$sid or `user` in (select `user` from sub_senf where senfid in (select id from asnaf where father=$sid))";
											$resc=mysqli_query($connection,$sqlc);
											$countrc=mysqli_num_rows($resc);
											echo($countrc);
										?>
									</td>
                                </tr>
                                <?php
                                $id = $fild['id'];
                                $sql2 = "select * from asnaf where `father`=$id";
                                $res2 = mysqli_query($connection, $sql2);
                                while ($fild2 = mysqli_fetch_assoc($res2)) {
                                    ?>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-<?php echo($fild2['title']); ?></td>
										<td>
										<?php
											$sid=$fild2['id'];
											$sqlc="select * from users where `senfid`=$sid or `user` in (select `user` from sub_senf where senfid=$sid)";
											$resc=mysqli_query($connection,$sqlc);
											echo(mysqli_num_rows($resc));
										?>
										</td>
                                    </tr>
                                    <?php
                                }
                            }
                            ?>
                            </tbody>
                        </table>
</body>
</html>