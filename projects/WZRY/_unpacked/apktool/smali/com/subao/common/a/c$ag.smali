.class Lcom/subao/common/a/c$ag;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/intf/XunyouUserStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ag"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/XunyouUserStateCallback;


# direct methods
.method constructor <init>(Lcom/subao/common/intf/XunyouUserStateCallback;)V
    .locals 0

    .prologue
    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2581
    iput-object p1, p0, Lcom/subao/common/a/c$ag;->a:Lcom/subao/common/intf/XunyouUserStateCallback;

    .line 2582
    return-void
.end method


# virtual methods
.method public onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 2586
    const-string v0, "SubaoAuth"

    .line 2587
    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2588
    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "onXunyouUserState(%s): error=%d, userState=%d, vipTime=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 2589
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    .line 2588
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c$ag;->a:Lcom/subao/common/intf/XunyouUserStateCallback;

    if-eqz v0, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/subao/common/a/c$ag;->a:Lcom/subao/common/intf/XunyouUserStateCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/XunyouUserStateCallback;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 2594
    :cond_1
    return-void
.end method
