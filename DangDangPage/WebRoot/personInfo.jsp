<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
  <head>
    <link rel="shortcut icon" href="http://csdnimg.cn/public/favicon.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人空间</title>
    <link rel="stylesheet" href="/css/info/bootstrap.css">
    <link rel="stylesheet" href="/css/info/csdn-themes-defalut.css">
    <link rel="stylesheet" href="/css/info/index.css">
    <link rel="stylesheet" href="/css/info/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="/css/info/popover.css">
    <link rel="stylesheet" href="/css/info/style.css?0f81290">
    <link rel="stylesheet" href="/css/info/index1.css?0f81290"> <!-- 改为index1.css -->
    <script src="/js/info/jquery-1.9.1.min.js"></script><!--[if lt IE 9]>
    <script src="//csdnimg.cn/public/common/html5shiv.min.js"></script>
    <script src="//csdnimg.cn/public/common/respond.min.js"></script><![endif]-->
    
    <script>
      var username = 'iver99';
      var operusername = 'iver99';
    </script>
    
  </head>
  <body >
  
  <script id="toolbar-tpl-scriptId" src="/js/info/html.js" prod="my" skin="black" type="text/javascript"></script>
  <header class="container">
        
    <div id="my-nav" role="banner" class="navbar navbar-static-top">
      <nav role="navigation" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="/">首页</a></li>
          <li ><a href="/my/album">相册</a></li>
          <li ><a href="/my/favorite">收藏</a></li>
          <li ><a href="/my/follow">关系</a></li>
          <li ><a href="/my/letter">私信</a></li>
          <li ><a href="/my/feed">动态</a></li>
     
        </ul>
        <div class="pull-right"><a href="https://my.csdn.net/my/account/changepwd" title="帐号设置" class="btn btn-cfg"></a></div>
      </nav>
    </div>
    
    
  </header>
  <div id="main" class="container">
    <div class="row">
      <div class="content col-xs-9">
                
        <section id="info" class="simple-box">
          <div class="simple-box-content clearfix">
            <div class="pull-left"><a href="#upload-picture" data-toggle="modal" class="picture"><img src="/images/info/default-picture.gif" class="avatarurl"><span class="tip-icon"></span></a>
              <div class="row">
                <div class="col-xs-6"><a href="javascript:void 0" class="btn btn-ok follow"><span class="glyphicon glyphicon-plus"></span><span class="content">关注</span></a></div>
                <div class="col-xs-6"><a href="#privacy-letter" data-toggle="modal" class="btn btn-ok send-message"><span class="glyphicon glyphicon-envelope"></span>发私信</a>
                  <div id="privacy-letter" role="dialog" data-keyboard="false" class="modal fade">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-body">
                          <h2>发私信<a href="javascript:void 0" data-dismiss="modal" class="glyphicon glyphicon-remove"></a></h2>
                          <form role="form" method="post" action="/my/letter/do_send" class="form-horizontal container-fluid">
                            <div style="display: none" class="alert alert-danger"></div>
                            <div class="form-group">
                              <label for="username" class="control-label col-xs-2"><span>*</span>收信人：</label>
                              <div class="col-xs-9">
                                <input id="username" type="text" name="username" maxlength="20" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="title" class="control-label col-xs-2"><span>*</span>标题：</label>
                              <div class="col-xs-9">
                                <input id="title" type="text" name="title" maxlength="100" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <label for="message" class="control-label col-xs-2">内容：</label>
                              <div class="col-xs-9">
                                <textarea id="message" name="message" class="form-control"></textarea>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-xs-4 col-xs-offset-2 f12">您还可以输入<span class="red">140&nbsp;</span>字</div>
                              <div class="col-xs-5 text-right">
                                <button type="button" data-dismiss="modal" class="btn btn-default">取消</button>
                                <button class="btn-ok btn btn-primary">发送</button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <link rel="stylesheet" href="/css/info/jquery-ui-1.10.3.css">
              <link rel="stylesheet" href="/css/info/screen_shot.css"><!--[if lt IE 9]>
              <script src="/assets/js/excanvas.compiled.js"></script><![endif]-->
              <div id="upload-picture" role="dialog" class="modal fade">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-body">
                      <form role="form" action="/do_base64_avatar" method="post" enctype="multipart/form-data" class="upload-form container-fluid">
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择照片
                              <input type="file" name="tmp_avatar_file">
                            </label>
                          </div>
                          <div class="col-xs-4">
                            <input type="submit" value="确定" class="btn btn-ok">
                            <input type="button" value="取消" class="btn btn-cancel">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-xs-12"><span class="upload-tip">仅支持JPG, GIF, PNG格式，文件小于5M。</span></div>
                        </div>
                        <div class="row preview">
                          <div class="col-xs-6">
                            <div class="big">
                            </div>
                          </div>
                          <div class="col-xs-4">
                            <div class="medium">
                            </div>150x150像素
                          </div>
                          <div class="col-xs-2">
                            <div class="small">
                            </div>75x75像素
                            <div class="smaller">
                            </div>50x50像素
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="pull-right"><a href="#upload-qr-image" data-toggle="modal" class="picture"><img src="/assets/img/qr-small.png" class="qrcodeattachurl"><span class="tip-icon"></span></a><a href="javascript:void 0" class="restore-qr-image">恢复默认二维码</a>
              <div id="upload-qr-image" role="dialog" class="modal fade">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-body">
                      <form role="form" action="/do_save_qrcode" method="post" enctype="multipart/form-data" class="upload-form container-fluid">
                        <div class="row preview">
                          <div class="col-xs-6">
                            <div class="big"><img src="/images/info/qr-small.png" class="qrcodeattachurl"></div>
                          </div>
                          <div class="col-xs-6">
                            <div class="medium"><img src="/images/info/qr-small.png" class="qrcodeattachurl"></div><br>显示效果
                          </div>
                        </div>
                        <div class="row btns">
                          <div class="col-xs-8">
                            <label class="btn-choose-file">选择二维码图片
                              <input type="file" name="qrcode_file">
                            </label>
                          </div>
                          <div class="col-xs-4">
                            <input type="submit" value="确定" class="btn btn-ok">
                            <input type="button" value="取消" class="btn btn-cancel">
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <h2><span class="username"></span></h2>
            <div class="fields nickname-field"><span class="just-in-edit"><a href="javascript:void 0" title="修改昵称" class="btn-edit"></a>
                <form role="form" action="/usernick/savebyusername" method="post">
                  <div class="form-group">
                    <input id="nickname" type="text" name="nickname" placeholder="昵称90天可改一次" title="昵称90天可改一次" maxlength="20" class="form-control">
                    <label for="nickname" class="control-label error-tip checknick-error">昵称已被使用，请重新输入。</label>
                    <label class="control-label error-tip basic-error">2～20个字，支持中文、英文、数字、"_"、"-"。</label>
                    <label for="nickname" class="control-label error-tip locked-error">已锁定，<span class="value"></span>天后可以修改。</label>
                  </div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">昵称：</span><span class="nickname"></span></div>
            <div style="display: none" class="fields realname-field"><span class="just-in-edit"><a href="javascript:void 0" title="修改实名" class="btn-edit"></a>
                <form role="form" action="/userinfo/savebyusername" method="post">
                  <div class="form-group">
                    <input type="text" name="realname" placeholder="你的真实姓名" title="你的真实姓名" maxlength="20" class="form-control">
                  </div><a href="javascript:void 0" title="不公开" data-privacyname="realname" class="toggle-privacy"></a>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">实名：</span><span class="realname privacy-item"></span></div>
            <div class="fields"><span class="just-in-edit"><a href="javascript:void 0" title="修改公司/职位" class="btn-edit"></a>
                <form role="form" action="/userinfo/savebyusername" method="post">
                  <div class="form-group">
                    <input type="text" name="curjob" placeholder="当前职位" title="当前职位" maxlength="100" class="form-control">
                  </div>
                  <div class="form-group">
                    <input type="text" name="curcompany" placeholder="当前公司" title="当前公司" maxlength="200" class="form-control">
                  </div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">公司职位：</span><span class="curjob"></span><span style="display: none" class="curcompany"> <span class="value"></span></span></div>
            <div class="fields"><span class="just-in-edit"><a href="javascript:void 0" title="修改毕业院校" class="btn-edit"></a>
                <form role="form" action="/userinfo/savebyusername" method="post">
                  <div class="form-group">
                    <input type="text" name="gradschool" placeholder="毕业院校" title="毕业院校" maxlength="200" class="form-control">
                  </div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">毕业院校：</span><span class="gradschool"></span></div>
            <div class="fields"><span class="just-in-edit"><a href="javascript:void 0" title="修改常住地/从事领域" class="btn-edit"></a>
                <form role="form" action="/userinfo/savebyusername" method="post" class="addr-form">
                  <div class="form-group">
                    <select id="country" name="country" title="国家" data-meta-type="int" class="form-control">
                      <option value="1">中国</option>
                      <option>其它</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <select id="province" name="province" title="省" data-meta-type="int" class="form-control">
                      <option value="100000">北京</option>
                      <option>其它</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <select id="city" name="city" title="市" data-meta-type="int" class="form-control">
                      <option value="100000">北京</option>
                      <option>其它</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <select id="industrytype" name="industrytype" data-meta-type="int" class="form-control">
                      <option value="1">互联网行业</option>
                      <option>其它</option>
                    </select>
                  </div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">住地领域：</span><span class="city"></span><span style="display: none" class="province">，<span class="country"></span><span class="value"></span></span><span style="display: none" class="industrytype">，<span class="value"></span></span></div>
            <div class="fields"><span class="just-in-edit"><a href="javascript:void 0" title="修改个人网站" class="btn-edit"></a>
                <form role="form" action="/userdetail/savecontactbyusername" method="post" class="website-form">
                  <div class="form-group">
                    <input type="text" name="website" placeholder="网站链接" title="网站链接" maxlength="85" class="form-control">
                  </div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">个人网站：</span><a href="http://" class="website"></a></div>
            <div class="fields"><span class="just-in-edit"><a href="javascript:void 0" title="修改个人简介" class="btn-edit"></a>
                <form role="form" action="/userinfo/savebyusername" method="post" class="intro-form">
                  <div class="form-group">
                    <textarea name="selfdesc" rows="4" placeholder="一句话简介" title="一句话简介" class="form-control"></textarea>
                  </div>
                  <div class="nums-tip">还可以输入<span class="value"></span>个字</div>
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                </form></span><span class="field-name">个人简介：</span><span class="selfdesc"></span></div>
          </div>
          <div class="more-info simple-box-content">
            <section>
              <h3>个人信息<a href="javascript:void 0" title="公开/隐藏" data-privacyname="userinfo" class="toggle-privacy"></a><span class="just-in-edit"><a href="javascript:void 0" class="btn-edit"></a>
                  <form role="form" action="/userinfo/savebyusername" method="post" class="form-horizontal">
                    <div class="form-group">
                      <label for="gender" class="col-xs-3 control-label">性别：</label>
                      <div class="col-xs-9">
                        <label>
                          <input id="gender" type="radio" name="gender" data-meta-type="int">男
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="maritalstatus" class="col-xs-3 control-label">婚姻状况：</label>
                      <div class="col-xs-9">
                        <label>
                          <input id="maritalstatus" type="radio" name="maritalstatus" data-meta-type="int">未婚
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="ethnic" class="col-xs-3 control-label">民族：</label>
                      <div class="col-xs-9">
                        <select id="ethnic" name="ethnic" data-meta-type="int" class="form-control">
                          <option value="1">汉</option>
                          <option>其它</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="birthday" class="col-xs-3 control-label">出生日期：</label>
                      <div class="col-xs-9">
                        <input id="birthday" type="text" name="birthday" readonly="" data-date-format="yyyy-m-d" class="form-control">
                      </div>
                    </div>
                    <input type="submit" value="确定" class="btn btn-ok">
                    <input type="button" value="取消" class="btn btn-cancel">
                  </form></span></h3>
              <div class="row privacy-item">
                <div class="col-xs-7">性　别：<span class="gender skip-init"></span></div>
                <div class="col-xs-5">婚姻状况：<span class="maritalstatus skip-init"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">民　族：<span class="ethnic skip-init"></span></div>
                <div class="col-xs-5">出生日期：<span data-format="/^(\d+-\d+-\d+)/" class="birthday"></span></div>
              </div>
            </section>
            <section>
              <h3>联系方式<a href="javascript:void 0" title="公开/隐藏" data-privacyname="contactinfo" class="toggle-privacy"></a><span class="just-in-edit"><a href="javascript:void 0" class="btn-edit"></a>
                  <form id="contactinfo" role="form" action="/userdetail/savecontactbyusername" method="post" class="form-horizontal">
                    <div class="form-group">
                      <label for="submobile" class="col-xs-3 control-label">手　　机：</label>
                      <div class="col-xs-9">
                        <input id="submobile" type="text" name="submobile" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="homephone" class="col-xs-3 control-label">家庭电话：</label>
                      <div class="col-xs-9">
                        <input id="homephone" type="text" name="homephone" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="addr" class="col-xs-3 control-label">联系地址：</label>
                      <div class="col-xs-9">
                        <input id="addr" type="text" name="addr" maxlength="200" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="companyPhone" class="col-xs-3 control-label">公司电话：</label>
                      <div class="col-xs-9">
                        <input id="companyPhone" type="text" name="companyPhone" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="companyAddr" class="col-xs-3 control-label">公司地址：</label>
                      <div class="col-xs-9">
                        <input id="companyAddr" type="text" name="companyAddr" maxlength="200" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="fax" class="col-xs-3 control-label">传　　真：</label>
                      <div class="col-xs-9">
                        <input id="fax" type="text" name="fax" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <input type="submit" value="确定" class="btn btn-ok">
                    <input type="button" value="取消" class="btn btn-cancel">
                  </form></span></h3>
              <div class="row privacy-item">
                <div class="col-xs-7">手　　机：<span class="submobile"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">家庭电话：<span class="homephone"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">联系地址：<span class="addr"></span></div>
                <div class="col-xs-5">公司电话：<span class="companyPhone"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">公司地址：<span class="companyAddr"></span></div>
                <div class="col-xs-5">传　　真：<span class="fax"></span></div>
              </div>
            </section>
            <section>
              <h3 class="more-more-info">更多联系方式<a href="javascript:void 0" title="公开/隐藏" data-privacyname="morecontactinfo" class="toggle-privacy"></a><span class="just-in-edit"><a href="javascript:void 0" class="btn-edit"></a>
                  <form id="morecontactinfo" role="form" action="/userdetail/savecontactbyusername" method="post" class="form-horizontal">
                    <div class="form-group">
                      <label for="weibo" class="col-xs-3 control-label">微博：</label>
                      <div class="col-xs-9">
                        <input id="weibo" type="text" name="weibo" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="skype" class="col-xs-3 control-label">Skype：</label>
                      <div class="col-xs-9">
                        <input id="skype" type="text" name="skype" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="qq" class="col-xs-3 control-label">Q　Q：</label>
                      <div class="col-xs-9">
                        <input id="qq" type="text" name="qq" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="gtalk" class="col-xs-3 control-label">GTalk：</label>
                      <div class="col-xs-9">
                        <input id="gtalk" type="text" name="gtalk" maxlength="54" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="pubemail" class="col-xs-3 control-label">公开邮箱：</label>
                      <div class="col-xs-9">
                        <input id="pubemail" type="text" name="pubemail" maxlength="200" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="other" class="col-xs-3 control-label">其它：</label>
                      <div class="col-xs-9">
                        <input id="other" type="text" name="other" maxlength="200" class="form-control">
                      </div>
                    </div>
                    <input type="submit" value="确定" class="btn btn-ok">
                    <input type="button" value="取消" class="btn btn-cancel">
                  </form></span></h3>
              <div class="row privacy-item">
                <div class="col-xs-7">微博：<span class="weibo"></span></div>
                <div class="col-xs-5">Skype：<span class="skype"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">Q　Q：<span class="qq"></span></div>
                <div class="col-xs-5">GTalk：<span class="gtalk"></span></div>
              </div>
              <div class="row privacy-item">
                <div class="col-xs-7">公开邮箱：<span class="pubemail"></span></div>
                <div class="col-xs-5">其它：<span class="other"></span></div>
              </div>
            </section>
          </div>
          <div class="simple-box-bottom clearfix">
            <div class="pull-right"><a href="javascript:void 0">更多个人信息 <span class="icon icon-down"></span></a></div>
          </div>
        </section>
        <section id="services" class="simple-box">
          <h2>足迹</h2>
          <div class="simple-box-content">
            <h3>CSDN足迹</h3>
            <ul class="csdn-services list-inline">
              
              <li><a target="_blank" class="btn btn-info " href="http://download.csdn.net/my">资源</a></li>
              
              <li><a target="_blank" class="btn btn-info blog">博客</a></li>
              <li><a target="_blank" class="btn btn-info bbs">帖子</a></li>
              <li><a target="_blank" class="btn btn-info ask">问答</a></li>
              <li><a target="_blank" class="btn btn-info code">代码</a></li>
                            
              <li><a target="_blank" href="http://huiyi.csdn.net/meeting/main/my" class="btn btn-info">会议</a></li>
                            
                            
            </ul>
            <h3>更多足迹</h3>
            <ul class="my-services list-inline">
              <li><a href="#" class="markurl"><span class="markname"></span></a><a href="javascript:void 0" title="删除" class="btn-remove"></a></li>
            </ul>
            <form role="form" action="/UserMark/savebyusername" method="post" class="form-add row">
              <input type="hidden" name="markid" value="0" data-meta-type="int">
              <input type="hidden" name="marktype" value="20" data-meta-type="int">
              <div class="narrow-col col-xs-1"><a href="javascript:void 0" class="btn-add"></a></div>
              <div class="col-xs-2">
                <input id="service-name" name="markname" type="text" placeholder="添加一个新足迹" maxlength="20" required="" class="form-control">
              </div>
              <div class="col-xs-7">
                <input id="service-url" name="markurl" type="text" placeholder="链接地址" maxlength="85" required="" class="form-control">
              </div>
              <div class="col-xs-3">
                <input type="submit" value="确认" class="btn btn-ok">
                <input type="button" value="取消" class="btn btn-cancel last">
              </div>
            </form>
          </div>
        </section>
        <section id="reward" class="simple-box">
          <h2>成就</h2>
          <div class="simple-box-content">
            <ul class="medals list-inline">
              <li>
                <div class="medal"><img class="image_url"><span class="count"></span></div>
              </li>
            </ul>
            <div class="rank">
              <div class="row bbs_info">
                <div class="col-xs-4"><b>论坛：</b>可用分：<span class="point"></span></div>
                <div class="col-xs-3">专家分：<span style="display: none" class="expert_point">共<span class="value"></span>分</span></div>
                <div class="col-xs-4"><a href="javascript:void 0" class="details">查看详细</a></div>
              </div>
              <div class="row blog_info">
                <div class="col-xs-4"><b>博客：</b>积分：<span class="point"></span></div>
                <div class="col-xs-3">排名：<span style="display: none" class="rank">第<span class="value"></span>名</span></div>
                <div class="col-xs-4">访问：<span style="display: none" class="viewcount"><span class="value"></span>次</span></div>
              </div>
              <div class="row download_info">
                <div class="col-xs-4"><b>下载：</b>积分：<span class="score"></span></div>
                <div class="col-xs-3">排名：<span style="display: none" class="rank">第<span class="value"></span>名</span></div>
                <div class="col-xs-4">上传资源：<span style="display: none" class="uploadcount"><span class="value"></span>个</span></div>
              </div>
            </div>
            <h3>更多成就</h3>
            <ul class="reward-list list-unstyled">
              <li><a href="#" class="markurl"><span class="markname"></span></a><a href="javascript:void 0" title="删除" class="btn-remove"></a></li>
            </ul>
            <form role="form" action="/UserMark/savebyusername" method="post" class="form-add row">
              <input type="hidden" name="markid" value="0" data-meta-type="int">
              <input type="hidden" name="marktype" value="10" data-meta-type="int">
              <div class="narrow-col col-xs-1"><a href="javascript:void 0" class="btn-add"></a></div>
              <div class="col-xs-2">
                <input id="reward-name" name="markname" type="text" placeholder="添加一个新成就" maxlength="30" required="" class="form-control">
              </div>
              <div class="col-xs-7">
                <input id="reward-url" name="markurl" type="text" placeholder="链接地址" maxlength="85" required="" class="form-control">
              </div>
              <div class="col-xs-3">
                <input type="submit" value="确认" class="btn btn-ok">
                <input type="button" value="取消" class="btn btn-cancel last">
              </div>
            </form>
          </div>
        </section>
        <section id="more-info" class="simple-box">
          <h2>个人背景</h2>
          <div class="simple-box-content">
            <section id="jobs" class="info-box">
              <h3>工作经历<a href="javascript:void 0" title="公开/隐藏" data-privacyname="job" class="toggle-privacy"></a><a href="javascript:void 0" title="添加" class="btn-add pull-right"></a></h3>
              <form role="form" action="/userworkexp/savebyworkiduname" method="post" class="form-add">
                <input type="hidden" name="workid" value="0" data-meta-type="int">
                <div class="form-group">
                  <label for="company-input">公司<span class="red">*</span></label>
                  <input type="text" id="company-input" name="orgname" required="" maxlength="200" class="form-control">
                </div>
                <div class="form-group">
                  <label for="title-input">职位<span class="red">*</span></label>
                  <input type="text" id="title-input" name="job" required="" maxlength="200" class="form-control">
                </div>
                <div class="form-group">
                  <label for="desc-input">工作描述<span class="red">*</span></label>
                  <textarea id="desc-input" name="workdesc" rows="5" required="" maxlength="300" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <label for="time-period">时间段</label>
                  <div class="form-inline range-container">
                    <div class="form-group">
                      <select id="time-period" name="workbegindate" class="from-year form-control">
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <select class="from-month form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
                    </div><span> - </span><span class="currentlyText">至今</span>
                    <div class="form-group">
                      <select name="workenddate" class="to-year form-control">
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <select class="to-month form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
                    </div>
                    <div class="form-group"><span class="help-block">日期范围无效！</span></div>
                  </div>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" class="currently">至今还在这里
                  </label>
                </div>
                <div class="bottom-btns">
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                  <div class="pull-right"><a href="javascript:void 0" title="删除" class="btn-remove"></a></div>
                </div>
              </form>
              <ul data-remove="/userworkexp/delbyusername" class="list-unstyled">
                <li style="display: none">
                  <h4><b class="job"></b><a href="javascript:void 0" title="编辑" class="btn-edit"></a>
                  </h4>
                  <div>
                    <p class="sub-title orgname privacy-item"></p>
                    <p class="privacy-item"><b data-format="/^(\d{4}-\d\d?)/" class="workbegindate"></b> – <b data-empty="至今" data-format="/^(\d{4}-\d\d?)/" class="workenddate"></b></p>
                    <p class="workdesc privacy-item"></p>
                  </div>
                </li>
              </ul>
            </section>
            <section id="edu" class="info-box">
              <h3>教育经历<a href="javascript:void 0" title="公开/隐藏" data-privacyname="edu" class="toggle-privacy"></a><a href="javascript:void 0" title="添加" class="btn-add pull-right"></a></h3>
              <form role="form" action="/usereduexp/savebyeduiduname" method="post" class="form-add">
                <input type="hidden" name="eduid" value="0" data-meta-type="int">
                <div class="form-group">
                  <label for="school-input">学校<span class="red">*</span></label>
                  <input type="text" id="school-input" name="schoolname" required="" maxlength="200" class="form-control">
                </div>
                <div class="form-group">
                  <label for="profession-input">专业</label>
                  <select id="profession-input" name="major" title="专业" data-meta-type="int" class="form-control"></select>
                </div>
                <div class="form-group">
                  <label for="degree-input">学位</label>
                  <select id="degree-input" name="degree" title="学位" data-meta-type="int" class="form-control"></select>
                </div>
                <div class="form-group">
                  <label for="time-period">时间段</label>
                  <div class="form-inline range-container">
                    <div class="form-group">
                      <select id="time-period" name="edustartdate" class="from-year form-control">
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <select class="from-month form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
                    </div><span> - </span><span class="currentlyText">至今</span>
                    <div class="form-group">
                      <select name="eduenddate" class="to-year form-control">
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <select class="to-month form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                      </select>
                    </div>
                    <div class="form-group"><span class="help-block">日期范围无效！</span></div>
                  </div>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" class="currently">至今还在这里
                  </label>
                </div>
                <div class="bottom-btns">
                  <input type="submit" value="确定" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel">
                  <div class="pull-right"><a href="javascript:void 0" title="删除" class="btn-remove"></a></div>
                </div>
              </form>
              <ul data-remove="/usereduexp/delbyusername" class="list-unstyled">
                <li style="display: none">
                  <h4><b class="schoolname"></b><a href="javascript:void 0" title="编辑" class="btn-edit"></a>
                  </h4>
                  <div>
                    <p class="sub-title privacy-item"><span class="major"></span><span class="degree">，<span class="value"></span></span></p>
                    <p class="privacy-item"><span data-format="/^(\d{4}-\d\d?)/" class="edustartdate"></span> – <span data-empty="至今" data-format="/^(\d{4}-\d\d?)/" class="eduenddate"></span></p>
                  </div>
                </li>
              </ul>
            </section>
            <section id="skills" class="info-box">
              <h3>技能专长<a href="javascript:void 0" title="添加" class="btn-add pull-right"></a></h3>
              <form role="form" action="/userskill/savebyskilliduname" method="post" class="form-add row">
                <div class="col-xs-9">
                  <input name="skillname" type="text" placeholder="输入一个技能" maxlength="30" required="" class="form-control">
                </div>
                <input type="hidden" name="skillid" value="0" data-meta-type="int">
                <div class="col-xs-3">
                  <input type="submit" value="确认" class="btn btn-ok">
                  <input type="button" value="取消" class="btn btn-cancel last">
                </div>
              </form>
              <ul class="list-unstyled">
                <li style="display: none" class="clearfix">
                  <div class="pull-left"><span class="numbers">26</span><span class="skill skillname">项目管理 </span><a href="javascript:void 0" title="赞这个技能!" class="glyphicon glyphicon-plus"></a><a href="javascript:void 0" title="删除技能" class="glyphicon glyphicon-remove"></a></div>
                  <div class="pull-right">
                    <ul class="users list-inline">
                      <li><a href="#" title="用户" target="_blank" class="user-link"><img src="/assets/img/default-picture-sm.png"></a></li>
                    </ul><a href="javascript:void 0" title="更多" class="icon icon-triangle-right"></a>
                  </div>
                  <div class="all-users">
                    <ul class="users list-inline">
                      <li><a href="#" title="用户" target="_blank" class="user-link"><img src="/assets/img/default-picture-sm.png"></a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </section>
            <section id="tags" class="info-box">
              <h3>关注主题</h3>
              <ul class="list-inline tags">
                <li style="display: none"><a href="#" target="_blank" class="badge"><span class="alias"></span></a></li>
              </ul>
            </section>
          </div>
        </section>
        <section id="my-recent" style="display:none" class="simple-box">
          <h2>动态</h2>
          <div class="simple-box-content">
            <dl>
              <dt><span class="count_down"></span></dt>
              <dd></dd>
            </dl>
          </div>
        </section>
      </div>
      <div class="sides col-xs-3 fixed-wrapper">
        <div class="fixed-content">
          <aside id="similar" class="simple-box">
            <h3>这些人在用个人空间</h3>
            <div class="simple-box-content">
              <div class="users">
                <ul class="row">
                  <li style="display: none" class="col-xs-4"><a href="#" target="_blank" class="user"><img src="/assets/img/default-picture-sm.png" class="avatar"></a>
                    <div class="user-info">
                      <h4 class="username"></h4>
                      <p><span class="curjob"><span class="value"></span>  </span><span class="curcompany">目前就职于<span class="value"></span></span></p><a href="#" target="_blank" class="btn btn-link goto">去看看</a>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="placeholder"></div><a href="javascript:void 0" title="换一批" class="btn btn-link refresh"></a>
            </div>
          </aside>
          <aside id="recommend-tags" style="display: none" class="simple-box">
            <h3>你可能感兴趣的主题</h3>
            <div class="simple-box-content">
              <ul class="tag-list list-unstyled">
                <li style="display: none"><a href="javascript:void 0" title="关注" class="follow"><span class="count"></span></a><a href="#" target="_blank" class="tag-link"><span class="alias"></span></a></li>
              </ul>
            </div>
          </aside>
        </div>
      </div>
    </div>
  </div>
  <script src="/js/info/bootstrap.min.js"></script>
  <script src="/js/info/cnick.js"></script>
  <script src="/js/info/bootstrap-datetimepicker.min.js"></script>
  <script src="/js/info/bootstrap-datetimepicker.zh-CN.js"></script>
  <script src="/js/info/jquery.form.min.js"></script>
  <script src="/js/info/jquery-migrate-1.1.1.min.js"></script>
  <script src="/js/info/jquery-ui-1.10.3.min.js"></script>
  <script src="/js/info/screen_shot.js"></script>
  <script src="/js/info/index.js?0f81290"></script>
  <footer>
    <script>document.write('<script type="text/javascript" src="//csdnimg.cn/pubfooter/js/publib_footer.js?' + (new Date()/300000|0) + '"></'+'script>');</script>
  </footer>
  <script id="csdn-toolbar-id" src="//csdnimg.cn/public/common/toolbar/js/toolbar.js" prod="space" btnId="header_notice_num" wrapId="note1" count="5" subCount="5" type="text/javascript"></script></body>
</html>