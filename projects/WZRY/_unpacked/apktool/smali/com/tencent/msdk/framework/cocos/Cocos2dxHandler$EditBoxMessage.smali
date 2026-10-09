.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "inputMode"    # I
    .param p4, "inputFlag"    # I
    .param p5, "returnType"    # I
    .param p6, "maxLength"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 147
    iput p3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    .line 148
    iput p4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    .line 149
    iput p5, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->returnType:I

    .line 150
    iput p6, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    .line 151
    return-void
.end method
