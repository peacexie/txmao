﻿


===================================================================================
*** 1. 目录文件规划建议

建议文件和目录命名全部用英文字母，数值和下划线组成，且全部是半角，
不要用汉字和全角字符；常见文件夹介绍如下：

#dbf#\: 数据库文件夹， 后台隐藏(后台不能查看/浏览)
sys\: 系统刷新文件夹， 后台隐藏(后台不能查看/浏览)

defdt\: 默认数据文件夹，留言等
defup\: 默认上传文件夹，投票/广告/类别图片等

dtinf\: InfX888新闻/介绍等数据文件夹，
dtpic\: InfX888图片/视频等数据文件夹，

dtbbs\: 论坛/PK
dtdoc\: 内部公文
dtbus\: 商务与供求 

myfile\: 自定义上传的文件；
myfile\adv: 广告连接图片
myfile\head: 头部图片
myfile\link: 图片连接图片
myfile\logo: 系统Logo图片
myfile\type: 类别图片

myftp\: 一般放FTP上传的大文件（如果有FTP权限，且你会用FTP），
myftp\test: 初始设置下，放了几个很小的测试文件（rar,wmv,flv,swf）；
myftp\doc:一般放office文件；
myftp\down:一般放大型压缩下载文件等；
myftp\media:一般放媒体文件；


建议: 
  1. 附件跟目录(\upfile\)不要直接放文件，跟目录不能添加文件夹，请把文件放在子目录中去；
  2. 自定义上传的文件 放在myfile及子目录下，FTP上传的大文件 放在myftp及子目录下；
     在myftp,myfile下再建立子目录，把文件上传到你建立的子目录中去；
  3. 假设您空间足够大，文件非常多，可在跟目录(\upfile\)下，以yyyy(四位年份)建立目录；
     在yyyy(四位年份)下在按 月份/日期建立子目录,或用有意义的字符串；




===================================================================================
*** 2. 后台自带上传功能

后台 >> 附件 >> 选择 里面的上传功能，仅为上传小文件提供方便。
具体文件目录管理，请用FTP管理；
上传大小限制为4M左右，但服务器设置一般没有那么大；
由于网速等原因，一般建议Web上传限制在500K以下，更大文件用FTP传；


===================================================================================
*** 3. 视频文件一般占用空间非常大

视频文件一般占用空间非常大，建议用FTP上传，建议视频大小最好在15M以下，
播放片长10分钟以内，FLV格式或WMV格式；如只是测试可以用更小的视频文件；


===================================================================================
*** 4. 一般企业租用空间都放不了几个大视频

视频文件一般占用空间非常大,一般企业租用空间都放不了几个大视频，这里只作提示，
相关问题请联系空间供应商


