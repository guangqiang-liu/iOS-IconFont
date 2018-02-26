​# IconFont使用

# 什么是IconFont
> 在平时的移动端开发中，我们通常看到的图标都是以图片形式集成到项目中使用的，而 Iconfont是一套字体图标而非图片，和我们平时在项目中使用自定义字体的方式一样，并且它是一种矢量图标

**Iconfont优点**

* 减小体积，字体文件比图片要小
* 缩放不会模糊，告别iOS中2x/3x以及未来nx的问题
* 一键换肤、方便更改图片颜色，图片复用
* 一套字体可在web、iOS、Android等多个平台使用

**缺点**

* 只支持单色，不支持复杂颜色的字体(不够阿里字体库现在也有多色字体了)
* 需要维护字体库

# 如何配置字体库
* 将UI设计好的字体文件下载到本地
* 将需要的字体库导入项目中并做简单配置

这里我们通常使用最广的就是利用[淘宝开源的字体库](http://www.iconfont.cn/?spm=a313x.7781069.1998910419.d4d0a486a)来管理我们的icon

**将字体文件下载至本地**

![img](http://ovyjkveav.bkt.clouddn.com/18-1-25/60586108.jpg)

![img](http://ovyjkveav.bkt.clouddn.com/18-1-25/32707450.jpg)

**在工程中配置字体文件**
![img](http://ovyjkveav.bkt.clouddn.com/18-1-25/8329778.jpg)

# 如何使用
* 在UILable中使用
* 在UIButton中使用
* 在UIImageView中使用

**在UILable中使用**

```
	 // UILable使用方式
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, 280, 40)];
    label.font = [UIFont fontWithName:@"iconfont" size:15]; //设置label的字体
    label.text = [GQFontImage matchIconCodeWithIconName:@"play_o"];
    label.textColor = [UIColor redColor];
    // lable根据内容自适应大小
    [label sizeToFit];
    [self.view addSubview:label];
    
    // UILable的text文本和字体混合显示
    UILabel *label2 = [[UILabel alloc] initWithFrame: CGRectMake(0, 240, 280, 40)];
    label2.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    label2.text = [NSString stringWithFormat:@"这是用label显示的iconfont:   %@", [GQFontImage matchIconCodeWithIconName:@"person_s"]];
    [self.view addSubview:label2];
```

**UIButton中使用**

```
	// 以Button的image文字来展示字体
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"字体图片测试" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 60, 200, 30);
    btn.backgroundColor = [UIColor redColor];
    // UIButton使用大小自适应行不通
    //  [test.titleLabel sizeToFit];
    [btn setTitleColor:[UIColor magentaColor] forState:UIControlStateNormal];
    [btn setImage:[GQFontImage iconWithFontName:@"keyboard_o" fontSize:23 fontColor:[UIColor orangeColor]] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    // 以Button的titleLable文字来展示字体
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.titleLabel.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    [btn2 setTitle: [GQFontImage matchIconCodeWithIconName:@"add_o"] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(0, 120, 100, 30);
    btn2.backgroundColor = [UIColor redColor];
    [btn2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:btn2];
```

**UIImageView中使用**

```
// UIImageView的使用
    UIImageView *img = [[UIImageView alloc] init];
    img.frame = CGRectMake(0, 300, 30, 30);
    img.backgroundColor = [UIColor purpleColor];
    img.image = [GQFontImage iconWithFontName:@"record_o" fontSize:30 fontColor:[UIColor magentaColor]];
    [self.view addSubview:img];
```

# 注意事项
* 在UILable中的使用时，需要设置lable的font：	` label.font = [UIFont fontWithName:@"iconfont" size:15]; //设置label的字体`