.class public Lcom/netease/mpay/widget/b/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/b/v$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/netease/mpay/widget/b/v$a;

.field private static final b:Lcom/netease/mpay/widget/b/v$a;

.field private static final c:Lcom/netease/mpay/widget/b/v$a;

.field private static final d:Lcom/netease/mpay/widget/b/v$a;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v2, 0xb18

    const/16 v4, 0x36

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/widget/b/v$a;

    const/16 v1, 0x35

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/netease/mpay/widget/b/v$a;-><init>(IIII)V

    sput-object v0, Lcom/netease/mpay/widget/b/v;->a:Lcom/netease/mpay/widget/b/v$a;

    new-instance v0, Lcom/netease/mpay/widget/b/v$a;

    const/16 v1, 0x44

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/netease/mpay/widget/b/v$a;-><init>(IIII)V

    sput-object v0, Lcom/netease/mpay/widget/b/v;->b:Lcom/netease/mpay/widget/b/v$a;

    new-instance v0, Lcom/netease/mpay/widget/b/v$a;

    const/16 v1, 0x55

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/netease/mpay/widget/b/v$a;-><init>(IIII)V

    sput-object v0, Lcom/netease/mpay/widget/b/v;->c:Lcom/netease/mpay/widget/b/v$a;

    new-instance v0, Lcom/netease/mpay/widget/b/v$a;

    const/16 v1, 0x37

    const/16 v2, 0xb43

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/netease/mpay/widget/b/v$a;-><init>(IIII)V

    sput-object v0, Lcom/netease/mpay/widget/b/v;->d:Lcom/netease/mpay/widget/b/v$a;

    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/widget/b/v;->e:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.webview"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.chrome.canary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/widget/b/v;->f:[Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->c()Lcom/netease/mpay/widget/b/v$a;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "2016-12-27"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "2017-01-07"

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sget-object v5, Lcom/netease/mpay/widget/b/v;->a:Lcom/netease/mpay/widget/b/v$a;

    invoke-virtual {v1, v5}, Lcom/netease/mpay/widget/b/v$a;->a(Lcom/netease/mpay/widget/b/v$a;)I

    move-result v5

    if-ltz v5, :cond_0

    sget-object v5, Lcom/netease/mpay/widget/b/v;->b:Lcom/netease/mpay/widget/b/v$a;

    invoke-virtual {v1, v5}, Lcom/netease/mpay/widget/b/v$a;->a(Lcom/netease/mpay/widget/b/v$a;)I

    move-result v5

    if-gez v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/netease/mpay/widget/b/v;->c:Lcom/netease/mpay/widget/b/v$a;

    invoke-virtual {v1, v5}, Lcom/netease/mpay/widget/b/v$a;->a(Lcom/netease/mpay/widget/b/v$a;)I

    move-result v5

    if-gez v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/netease/mpay/widget/b/v;->d:Lcom/netease/mpay/widget/b/v$a;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/widget/b/v$a;->a(Lcom/netease/mpay/widget/b/v$a;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->d()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Landroid/content/pm/PackageInfo;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "sPackageInfo"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->d()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Lcom/netease/mpay/widget/b/v$a;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->b()Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v2, Lcom/netease/mpay/widget/b/v;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/b/v$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/netease/mpay/widget/b/v$a;-><init>(IIII)V

    goto :goto_0
.end method

.method private static d()Landroid/content/Intent;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/netease/mpay/widget/b/v;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/netease/mpay/widget/b/v;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
