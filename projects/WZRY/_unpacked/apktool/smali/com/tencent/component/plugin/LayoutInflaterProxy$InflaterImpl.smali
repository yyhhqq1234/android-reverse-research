.class public interface abstract Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;
.super Ljava/lang/Object;
.source "LayoutInflaterProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/LayoutInflaterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InflaterImpl"
.end annotation


# virtual methods
.method public abstract createViewImpl(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
