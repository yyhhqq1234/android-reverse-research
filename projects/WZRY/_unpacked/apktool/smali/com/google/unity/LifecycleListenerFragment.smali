.class public Lcom/google/unity/LifecycleListenerFragment;
.super Landroid/app/Fragment;
.source "LifecycleListenerFragment.java"


# instance fields
.field private final listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 22
    iget-object v0, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;->onPause()V

    .line 25
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 29
    iget-object v0, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/unity/LifecycleListenerFragment;->listener:Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/UnityAndroidLifecycle$AndroidLifecycleListener;->onResume()V

    .line 32
    :cond_0
    return-void
.end method
