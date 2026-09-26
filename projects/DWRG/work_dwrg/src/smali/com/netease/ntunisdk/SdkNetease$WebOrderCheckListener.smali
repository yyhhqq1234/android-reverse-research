.class Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNetease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebOrderCheckListener"
.end annotation


# instance fields
.field private dataId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->uid:Ljava/lang/String;

    .line 1245
    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->dataId:Ljava/lang/String;

    .line 1246
    return-void
.end method


# virtual methods
.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 3
    .param p1, "oi"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;->dataId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 1251
    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p1, "oi"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 1256
    return-void
.end method
