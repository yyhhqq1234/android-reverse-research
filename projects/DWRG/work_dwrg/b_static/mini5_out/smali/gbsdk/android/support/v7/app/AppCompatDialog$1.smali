.class public Lgbsdk/android/support/v7/app/AppCompatDialog$1;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Lgbsdk/android/support/v4/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/app/AppCompatDialog;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/AppCompatDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDialog$1;->this$0:Lgbsdk/android/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lgbsdk/android/support/v7/app/AppCompatDialog$1;->this$0:Lgbsdk/android/support/v7/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v7/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
