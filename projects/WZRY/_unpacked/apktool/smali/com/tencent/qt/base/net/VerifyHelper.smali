.class public interface abstract Lcom/tencent/qt/base/net/VerifyHelper;
.super Ljava/lang/Object;
.source "VerifyHelper.java"


# static fields
.field public static final VH_RESULT_FAIL:I = 0x1

.field public static final VH_RESULT_FUCKOFF:I = 0x2

.field public static final VH_RESULT_OK:I


# virtual methods
.method public abstract getSTRequest(Z)Lcom/tencent/qt/base/net/Request;
.end method

.method public abstract onSTReponse(Lcom/tencent/qt/base/net/Message;)I
.end method
