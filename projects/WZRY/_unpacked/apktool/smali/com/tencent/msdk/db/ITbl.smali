.class public interface abstract Lcom/tencent/msdk/db/ITbl;
.super Ljava/lang/Object;
.source "ITbl.java"


# virtual methods
.method public abstract create()Z
.end method

.method public abstract delete()I
.end method

.method public abstract deleteAll()I
.end method

.method public abstract find()Lcom/tencent/msdk/db/BaseUserInfo;
.end method

.method public abstract findAll()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/db/BaseUserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract isExisted()Z
.end method

.method public abstract save()Z
.end method

.method public abstract update()I
.end method
