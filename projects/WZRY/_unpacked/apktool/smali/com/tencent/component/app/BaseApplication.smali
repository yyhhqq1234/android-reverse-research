.class public Lcom/tencent/component/app/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;,
        Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private final mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    :cond_0
    monitor-exit v2

    .line 139
    return-object v0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private collectFragmentLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 282
    :cond_0
    monitor-exit v2

    .line 283
    return-object v0

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dispatchActivityCreatedInner(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 53
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyedInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityPausedInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityResultInner(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 127
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityResumedInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 72
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivitySaveInstanceStateInner(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStartedInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStoppedInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 90
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityUserLeaveHintInner(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 118
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;->onActivityUserLeaveHint(Landroid/app/Activity;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentActivityCreatedInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 271
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentAttachedInner(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 178
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentCreatedInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 188
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentDestroyedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 244
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentDetachedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/support/v4/app/Fragment;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentOnActivityResultInner(Landroid/support/v4/app/Fragment;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 262
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onActivityResult(Landroid/support/v4/app/Fragment;IILandroid/content/Intent;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentPausedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 216
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentResumedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 207
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentSaveInstanceStateInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 234
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentStartedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 198
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFragmentStoppedInner(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/tencent/component/app/BaseApplication;->collectFragmentLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 225
    aget-object v2, v0, v1

    check-cast v2, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 290
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFragmentLifecycleCallbacks(Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/tencent/component/app/BaseApplication$ActivityLifecycleCallbacks;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterFragmentLifecycleCallbacks(Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/tencent/component/app/BaseApplication$FragmentLifecycleCallbacks;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/app/BaseApplication;->mFragmentLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
