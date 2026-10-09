.class Lcom/tencent/msdk/lbs/LocationService$3;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/lbs/LocationService;->getCellIDInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/lbs/LocationService;

.field final synthetic val$manager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/lbs/LocationService;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/tencent/msdk/lbs/LocationService$3;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iput-object p2, p0, Lcom/tencent/msdk/lbs/LocationService$3;->val$manager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;

    .line 445
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->access$000()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/lbs/LocationService$3;->val$manager:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/lbs/MyPhoneStateListener;-><init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/telephony/TelephonyManager;)V

    .line 446
    .local v0, "MyListener":Lcom/tencent/msdk/lbs/MyPhoneStateListener;
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService$3;->val$manager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 448
    return-void
.end method
