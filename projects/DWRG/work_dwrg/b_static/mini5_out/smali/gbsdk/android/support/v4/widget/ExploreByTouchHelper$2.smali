.class public final Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lgbsdk/android/support/v4/widget/FocusStrategy$CollectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/support/v4/widget/FocusStrategy$CollectionAdapter<",
        "Lgbsdk/android/support/v4/util/SparseArrayCompat<",
        "Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;",
        "Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lgbsdk/android/support/v4/util/SparseArrayCompat;I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/support/v4/util/SparseArrayCompat<",
            "Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;I)",
            "Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Lgbsdk/android/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Lgbsdk/android/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$2;->get(Lgbsdk/android/support/v4/util/SparseArrayCompat;I)Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public size(Lgbsdk/android/support/v4/util/SparseArrayCompat;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/support/v4/util/SparseArrayCompat<",
            "Lgbsdk/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)I"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Lgbsdk/android/support/v4/util/SparseArrayCompat;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Lgbsdk/android/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/widget/ExploreByTouchHelper$2;->size(Lgbsdk/android/support/v4/util/SparseArrayCompat;)I

    move-result p1

    return p1
.end method
