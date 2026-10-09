.class public Lgbsdk/android/support/v4/widget/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lgbsdk/android/support/v4/widget/SwipeRefreshLayout$7;->this$0:Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1144
    iget-object p2, p0, Lgbsdk/android/support/v4/widget/SwipeRefreshLayout$7;->this$0:Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p1}, Lgbsdk/android/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method
