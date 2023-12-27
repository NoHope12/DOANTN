<?php  	global $tmpl;
	$tmpl -> addStylesheet('default','plugins/comments/css');
	$tmpl -> addScript('default','plugins/comments/js');
?>
<ul class="lv1">
<li id="NavbarLogin">
<a data-target="#loginModal" data-toggle="modal" href="#">Đăng nhập</a>
</li>
</ul>
<section id="comments">
	<div class="tray-wrapper ONE-HROW comment-list">
		<div class="tray row" data-next-comment-index="1" data-total-comment="11219" data-item-type="f" data-item-slug="naruto-shippuuden">
			<form id="frmPostNewComment" class="comment-form comment-block new-comment">
				<a class="avatar" href="">
					<img src="" />
				</a>
				<div class="field">
					<textarea id="txtCommentForm" class="textarea form-control" required="" rows="2" placeholder="Vui lòng nhập ít nhất 5 từ."></textarea>
				</div>
				<div class="bot">
					<button class="submit-comment btn btn-primary" type="submit">Đăng</button>
					<div class="des t-tertiary">
						Bạn đã nhập<span id="txtCommentFormCounter" class="safe">0</span> từ. Tối đa 200 từ.
					</div>
				</div>
			</form>
			<div class="blocks">
				<article class="comment-block 1 ">
					<a class="avatar" href="javascript:;">
						<img src="http://vuighe.net/img/avatar/no-avatar.jpg">
					</a>
					<div class="content">
						<div class="comment-meta">
							<span class="author ">
								<a href="javascript:;"> iloveanime </a>
							</span>
							<span class="t-tertiary">
								<time datetime="2014-09-26T07:56:03+0700"> 59 phút trước </time>
							</span>
						</div>
						<div class="comment-body">
						</div>
						<div class="action-links">
							<a class="reply-link t-tertiary" author-display-name="iloveanime" author-id="50600" parent-comment-id="163801" data-comment-level="1" role="reply" href="#"> Trả lời </a>
						</div>
						<div class="reply "></div>
					</div>
				</article>
			</div>
			<div id="load_more_comment" style="display: block;">
				<button class="btn btn-default" onclick="return false;" type="button">
					<span class="content">Xem thêm 11,179 cảm nhận</span>
				</button>
			</div>
		</div>
	</div>
</section>
<div class="hidden-blocks">
	<div id="loginModal" class="modal fade in" aria-hidden="false" aria-labelledby="loginModal" role="dialog" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" aria-hidden="true" data-dismiss="modal" type="button">×</button>
					<h3 class="modal-title">Đăng nhập</h3>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6">
								<h4> Sử dụng tài khoản Facebook. </h4>
								<p>
									<img src="/img/xfb-login-btn.png.pagespeed.ic.ya_0Iw-T5s.png" style="cursor: pointer" alt="" onclick="FBLogin();">
								</p>
							</div>
							<div class="col-sm-6">
								<h4> Sử dụng tài khoản VuiGhe. </h4>
								<p>	</p>
								<form role="login-modal-form">
									<div class="form-group">
										<input class="form-control" type="text" required="" placeholder="Tài khoản" name="username">
									</div>
									<div class="form-group">
										<input class="form-control" type="password" required="" placeholder="Mật khẩu" name="password">
									</div>
									<div class="hidden-ele message t-tertiary">
										<p class="t-tertiary text-danger"> Thông tin đăng nhập không đúng. </p>
									</div>
									<div class="form-inline text-right">
										<div class="checkbox">
											<label>
											<input type="checkbox" name="isRemember">
												Ghi nhớ
											</label>
										</div>
										<button class="btn btn-primary" type="submit">Đăng nhập</button>
									</div>
								</form>
								<p></p>	
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<h5 class="text-center">
					<a data-target="#registerModal" data-toggle="modal" data-dismiss="modal" href="#">Đăng kí tài khoản VuiGhe.</a>
					</h5>
				</div>
			</div>
		</div>
		<div id="registerModal" class="modal fade" aria-hidden="true" aria-labelledby="registerModal" role="dialog" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<div class="pinned-message hidden-ele"> </div>
						<button class="close" aria-hidden="true" data-dismiss="modal" type="button">×</button>
						<h3 class="modal-title">Đăng kí tài khoản</h3>
					</div>
					<div class="modal-body">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-12">
									<form role="register-modal-form">
										<div class="form-group inp-container">
											<label class="title" for="regfrmDisplayName">Họ và tên</label>
											<input id="regfrmDisplayName" class="form-control" type="text" required="" title="Ít nhất 5 kí tự, chỉ sử dụng chữ cái (a-z) và khoảng trắng." pattern=".{5,}" name="displayName">
										</div>
										<div class="form-group inp-container">
											<label class="title" for="regfrmUsername">Tên đăng nhập</label>
											<input id="regfrmUsername" class="form-control" type="text" required="" title="Ít nhất 5 kí tự, chỉ sử dụng chữ cái (a-z) và số." pattern="[a-zA-Z0-9]{5,}" name="username">
										</div>
										<div class="form-group inp-container">
											<label class="title" for="regfrmEmail">Địa chỉ email</label>
											<input id="regfrmEmail" class="form-control" type="email" required="" name="email">
										</div>
										<div class="form-group" role="password">
											<div class="container-fluid no-padding">
												<div class="col-sm-6 no-padding-left inp-container">
													<label class="title" for="regfrmPassword">Mật khẩu</label>
													<input id="regfrmPassword" class="form-control" type="password" required="" title="Ít nhất 6 kí tự." pattern=".{6,}" name="password">
												</div>
												<div class="col-sm-6 no-padding-right inp-container">
													<label class="title" for="regfrmPassword2">Nhập lại mật khẩu</label>
													<input id="regfrmPassword2" class="form-control" type="password" required="" title="Ít nhất 6 kí tự." pattern=".{6,}" name="password2">
												</div>
											</div>
										</div>
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-6 no-padding">
													<div class="form-inline form-group birth"></div>
													<label class="title">Ngày sinh</label>
													<p>
														<select class="form-control" required="" name="birthDate"></select>
														<select class="form-control" required="" name="birthMonth"></select>
														<select class="form-control" required="" name="birthYear"></select>
													</p>
												</div>
												<div class="col-sm-6 no-padding-right">
													<div>
														<label class="title">Giới tính</label>
													</div>
													<div class="col-sm-8 no-padding">
														<div class="col-sm-6 no-padding">
															<div class="radio">
																<label>
																	<input type="radio" required="" value="0" name="gender">Nữ
																</label>
															</div>
														</div>
														<div class="col-sm-6 no-padding">
															<div class="radio">
																<label>
																	<input type="radio" required="" value="1" name="gender">Nam
																</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<h5 class="text-center">
							<a data-target="#loginModal" data-toggle="modal" data-dismiss="modal" href="#">Tôi đã có tài khoản.</a>
						</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>