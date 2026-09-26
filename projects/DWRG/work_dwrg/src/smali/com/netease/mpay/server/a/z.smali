.class public Lcom/netease/mpay/server/a/z;
.super Lcom/netease/mpay/server/a/be;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/netease/mpay/server/a/be;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p8, p0, Lcom/netease/mpay/server/a/z;->b:Ljava/lang/String;

    iput-object p9, p0, Lcom/netease/mpay/server/a/z;->c:Ljava/lang/String;

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


# virtual methods
.method b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netease/mpay/server/a/be;->b()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "bind_user_id"

    iget-object v2, p0, Lcom/netease/mpay/server/a/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bind_token"

    iget-object v2, p0, Lcom/netease/mpay/server/a/z;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
