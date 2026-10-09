.class public Lcom/ryg/dynamicload/DLBasePluginActivity;
.super Landroid/app/Activity;
.source "DLBasePluginActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/DLPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DLBasePluginActivity"


# instance fields
.field protected isAllowSensor:Z

.field protected mContentOb:Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;

.field private mCurrentOrient:I

.field protected mFrom:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field protected mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field protected mProxyActivity:Landroid/app/Activity;

.field public tgaAllowOrienPort:Z

.field protected that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    .line 137
    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    .line 139
    iput-boolean v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->tgaAllowOrienPort:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ryg/dynamicload/DLBasePluginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/ryg/dynamicload/DLBasePluginActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    return v0
.end method

.method static synthetic access$002(Lcom/ryg/dynamicload/DLBasePluginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ryg/dynamicload/DLBasePluginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    return p1
.end method

.method static synthetic access$100(Lcom/ryg/dynamicload/DLBasePluginActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ryg/dynamicload/DLBasePluginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->doOrientationChange(I)V

    return-void
.end method

.method private doOrientationChange(I)V
    .locals 3
    .param p1, "currentOrient"    # I

    .prologue
    .line 176
    const-string v0, "DLBasePluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestedOrientation mCurrentOrient is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    invoke-virtual {p0, v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->orientationChanged(I)V

    .line 178
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    iget v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mCurrentOrient:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 179
    return-void
.end method

.method private final startOrientationChangeListener()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Lcom/ryg/dynamicload/DLBasePluginActivity$1;

    iget-object v2, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/ryg/dynamicload/DLBasePluginActivity$1;-><init>(Lcom/ryg/dynamicload/DLBasePluginActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 168
    iget-boolean v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->isAllowSensor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 210
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V
    .locals 3
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "pluginPackage"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 80
    const-string v0, "DLBasePluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: proxyActivity= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 82
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 84
    return-void
.end method

.method public bindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 521
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 282
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public inviteWindow(Ljava/lang/String;I)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "src"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->inviteWindow(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 501
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 343
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 339
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 465
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 466
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v1, "extra.from"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    .line 91
    :cond_0
    iget v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v1, :cond_1

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 94
    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 98
    const-string v2, "DLBasePluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: from= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v1, :cond_2

    const-string v1, "DLConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->isAllowSensor:Z

    .line 104
    new-instance v1, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;

    invoke-direct {v1, p0}, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;-><init>(Lcom/ryg/dynamicload/DLBasePluginActivity;)V

    iput-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mContentOb:Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;

    .line 105
    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mContentOb:Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    return-void

    .line 98
    :cond_2
    const-string v1, "FROM_EXTERNAL"

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 448
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 449
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 414
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 415
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mContentOb:Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 430
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 455
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 456
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 360
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 364
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 388
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->startOrientationChangeListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 353
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 406
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 436
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 442
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 443
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "currentOrient"    # I

    .prologue
    .line 461
    return-void
.end method

.method public playWindowPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->playWindowPlayer(Landroid/app/Activity;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 201
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 192
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPluginActivity(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 477
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 487
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginService(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 504
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    move-result v0

    return v0
.end method

.method public stopPluginService(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 512
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->stopPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    move-result v0

    return v0
.end method

.method public unBindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 530
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 531
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method
