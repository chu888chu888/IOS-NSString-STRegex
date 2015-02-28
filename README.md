#NSString+STRegex

<pre><code>一些正则校验，判断邮箱，手机号码，车牌号，身份证号，网址，账号，密码，ip，去掉html格式等。
</code></pre>

![image](http://git.oschina.net/yanglishuan/NSString-STRegex/raw/master/ScreenShots/screenshot1.png)
![image](http://git.oschina.net/yanglishuan/NSString-STRegex/raw/master/ScreenShots/screenshot2.png)

<pre><code>// 判断邮箱
isValid = [text isValidEmail];
// 判断手机号码
isValid = [text isValidPhoneNum];
// 判断ip
isValid = [text isValidIP];
// 判断身份证号
isValid = [text isValidIdCardNum];
// 判断账号
isValid = [text isValidWithMinLenth:4 maxLenth:12 containChinese:NO firstCannotBeDigtal:YES];
// 去掉html格式
text = [text removeHtmlFormat];
</code></pre>

注：其中身份证号验证由张衎友情提供，在此表示感谢。