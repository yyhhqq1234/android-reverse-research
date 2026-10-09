.class public Lcom/android/support/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-string v2, "MyLibName"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v2, "SUBRESP"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckOverlayPermission(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 38
    move-object v3, v0

    invoke-static {v3}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static StartWithoutPermission(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 25
    move-object v4, v0

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 27
    new-instance v4, Lcom/android/support/Menu;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 28
    move-object v4, v2

    invoke-virtual {v4}, Lcom/android/support/Menu;->SetWindowManagerActivity()V

    .line 29
    move-object v4, v2

    invoke-virtual {v4}, Lcom/android/support/Menu;->ShowMenu()V

    .line 31
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    const-string v5, "Failed to launch the mod menu\n"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
