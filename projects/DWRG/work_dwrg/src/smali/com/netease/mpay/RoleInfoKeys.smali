.class public Lcom/netease/mpay/RoleInfoKeys;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final KEY_GANG_ID:Ljava/lang/String; = "gang_id"

.field public static final KEY_GANG_NAME:Ljava/lang/String; = "gang_name"

.field public static final KEY_HOST_ID:Ljava/lang/String; = "host_id"

.field public static final KEY_HOST_NAME:Ljava/lang/String; = "host_name"

.field public static final KEY_MENPAI_ID:Ljava/lang/String; = "menpai_id"

.field public static final KEY_MENPAI_NAME:Ljava/lang/String; = "menpai_name"

.field public static final KEY_REGION_ID:Ljava/lang/String; = "region_id"

.field public static final KEY_REGION_NAME:Ljava/lang/String; = "region_name"

.field public static final KEY_ROLE_GRADE:Ljava/lang/String; = "grade"

.field public static final KEY_ROLE_ID:Ljava/lang/String; = "role_id"

.field public static final KEY_ROLE_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_ROLE_TYPE_ID:Ljava/lang/String; = "type_id"

.field public static final KEY_ROLE_TYPE_NAME:Ljava/lang/String; = "type_name"

.field public static final KEY_VIP:Ljava/lang/String; = "vip"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
