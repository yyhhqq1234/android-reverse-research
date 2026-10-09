.class public Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V
    .locals 0

    .line 2699
    iput-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2705
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->dispatchTimeChanged()V

    return-void
.end method
