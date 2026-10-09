.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public titile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    .line 133
    return-void
.end method
