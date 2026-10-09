.class public interface abstract Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/app/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentLifecycleCallbacks"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onActivityResult(Landroid/support/v4/app/Fragment;IILandroid/content/Intent;)V
.end method

.method public abstract onFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
.end method

.method public abstract onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentDetached(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentPaused(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onFragmentStarted(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentStopped(Landroid/support/v4/app/Fragment;)V
.end method
