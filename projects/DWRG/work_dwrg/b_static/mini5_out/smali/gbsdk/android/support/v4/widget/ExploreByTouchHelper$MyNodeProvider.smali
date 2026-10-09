.class public Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
.super Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 1245
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;

    .line 1246
    invoke-virtual {v0, p1}, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1247
    invoke-static {p1}, Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1257
    iget-object p1, p0, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;

    iget p1, p1, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;

    iget p1, p1, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1262
    :cond_1
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
