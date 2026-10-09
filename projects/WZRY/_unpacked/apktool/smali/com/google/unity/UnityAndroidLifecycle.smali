.class public Lcom/google/unity/UnityAndroidLifecycle;
.super Ljava/lang/Object;
.source "UnityAndroidLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachListener(Landroid/app/Activity;Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    .prologue
    .line 20
    new-instance v0, Lcom/google/unity/LifecycleListenerFragment;

    invoke-direct {v0, p1}, Lcom/google/unity/LifecycleListenerFragment;-><init>(Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;)V

    .line 22
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 23
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 24
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 25
    return-void
.end method
