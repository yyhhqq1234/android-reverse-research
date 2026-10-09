.class public Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;
.super Landroid/app/Activity;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/livepusher/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Start()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 339
    .local v1, "it":Landroid/content/Intent;
    sget-object v4, Lcom/tencent/pandora/livepusher/ScreenCapture;->SCREEN_CAPTURE_INTENT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 341
    .local v3, "scIt":Landroid/content/Intent;
    :try_start_0
    sget v4, Lcom/tencent/pandora/livepusher/ScreenCapture;->REQUEST_CODE:I

    invoke-virtual {p0, v3, v4}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/tencent/pandora/livepusher/ScreenCapture;->ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "it4Brd":Landroid/content/Intent;
    sget-object v4, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_REQUEST_CODE:Ljava/lang/String;

    sget v5, Lcom/tencent/pandora/livepusher/ScreenCapture;->REQUEST_CODE:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    sget-object v4, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_CODE:Ljava/lang/String;

    sget v5, Lcom/tencent/pandora/livepusher/ScreenCapture;->ErrorCode_StartAssitantActivityFailed:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v2}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->finish()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "it4Brd":Landroid/content/Intent;
    sget-object v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    sget-object v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    sget-object v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->finish()V

    .line 363
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->requestWindowFeature(I)Z

    .line 332
    invoke-virtual {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;->Start()V

    .line 333
    return-void
.end method
