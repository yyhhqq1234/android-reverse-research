.class Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static final SDK_CALLBACK_DESCRIPTOR:Ljava/lang/String; = "com.huawei.iaware.sdk.ISDKCallbak"

.field private static final TRANSACTION_updatePhoneInfo:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;


# direct methods
.method public constructor <init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    const v2, 0xffffff

    if-gt p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    const-string v2, "com.huawei.iaware.sdk.ISDKCallbak"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAwareGameSdkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRegistedSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {v4}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {v2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {v2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IAwareGameSdkAdapter"

    const-string v3, "CBK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-static {v2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;->getPhoneInfo(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
