.class Lcom/smoba/webview/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/MainActivity;->startScreenShotListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smoba/webview/MainActivity;


# direct methods
.method constructor <init>(Lcom/smoba/webview/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/MainActivity$2;->this$0:Lcom/smoba/webview/MainActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShot(Ljava/lang/String;)V
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "ScreenShotListenManager"

    const-string v1, "franky mainc onShot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
