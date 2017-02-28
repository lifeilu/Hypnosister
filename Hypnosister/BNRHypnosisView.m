//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by 路丽菲 on 17/2/20.
//  Copyright © 2017年 路丽菲. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()
@property (strong, nonatomic) UIColor * circleColor;
@end

@implementation BNRHypnosisView


/*
 Only override drawRect: if you perform custom drawing.
 An empty implementation adversely affects performance during animation.*/

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    绘制单个圆
//    float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    
//    使最外层圆形成为视图的外接圆
    float maxRadius = hypot(bounds.size.width,bounds.size.height) / 2.0;
    
    
    
    UIBezierPath * path = [[UIBezierPath alloc]init];
//    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];
    
    for(float currentRadius = maxRadius;currentRadius > 0; currentRadius -= 20){
        [path moveToPoint:CGPointMake(center.x + currentRadius,center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    
    
    path.lineWidth = 10;
//    [[UIColor lightGrayColor]setStroke];
    [self.circleColor setStroke];
    

    [path stroke];
    
    
//绘制图片
//    UIImage * myImage = [UIImage imageNamed:@"tupian.jpeg"];
//    UIImage * myImage = [UIImage imageNamed:@"4.png"];
//    [myImage drawInRect:bounds];
    
   
//DrawingFont
//    NSString *fontName = @"";
//    
//    NSUInteger count1 = arc4random() % ([UIFont familyNames].count);
//    NSString *familyName = [UIFont familyNames][count1];
//    NSUInteger count2 = [UIFont fontNamesForFamilyName:familyName].count;
//    fontName = [UIFont fontNamesForFamilyName:familyName][arc4random() % count2];
//    
//    UIFont *font = [UIFont fontWithName:fontName size:30.0f];
//    NSString * string = @"My first view";
//    [string drawAtPoint:CGPointMake(30.0f, 100.0f) withFont:font];
    
//DrawingLine
//    [[UIColor brownColor] set];       //设置上下文使用的颜色
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGContextSetLineWidth(context, 2.0f);
//    CGContextMoveToPoint(context, 30.0f, 150.0f);  // 画笔移动到某点
//    CGContextAddLineToPoint(context, 290.0f, 150.0f);
//    CGContextStrokePath(context);       //执行绘制
    
//DrawingLinesContinuously
//    kCGLineJoinMiter——尖角
//    kCGLineJoinBevel——平角
//    kCGLineJoinRound——圆形
//    CGContextSetLineWidth(context, 6.0f);
//    CGContextSetLineJoin(context, kCGLineJoinRound);    //线条交汇处样式：圆角
//    CGContextMoveToPoint(context, 20.0f, 150.0f);
//    CGContextAddLineToPoint(context, 20.0f, 80.0f);
//    CGContextAddLineToPoint(context, 290.0f, 80.0f);
//    CGContextStrokePath(context);
    
//FillRect
//    UIColor *clearRed = [UIColor colorWithRed:0.5 green:0.0 blue:0.0 alpha:0.2];
//    CGContextSetFillColorWithColor(context, clearRed.CGColor);
//    CGContextFillRect(context, bounds);
  
    
//DrawingGradient
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    NSArray *colors = @[(__bridge id)[UIColor colorWithRed:0.3 green:0.0 blue:0.0 alpha:0.2].CGColor,
//                        (__bridge id)[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.8].CGColor];
//    const CGFloat locations[] = {0.0, 1.0};
//    
//    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)colors, locations);
//    
//    CGPoint startPoint = CGPointMake(CGRectGetMinX(bounds), CGRectGetMinY(bounds)); //矩形最小x,y
//    CGPoint endPoint = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));   //矩形最大x,y
//    
//    CGContextSaveGState(context);
//    CGContextAddRect(context, bounds);
//    CGContextClip(context);
//    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0); //开始绘制
//    CGContextRestoreGState(context);
//    
//    //释放资源
//    CGGradientRelease(gradient);
//    CGColorSpaceRelease(colorSpace);
    
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:(CGRect)frame];
    if(self){
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    // 获取三个0到1之间的数字
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.circleColor = randomColor;
}


- (void) setCircleColor:(UIColor *)circleColor{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}




@end
