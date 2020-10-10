.class public Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomNavigationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideBottomNavigationView(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private showBottomNavigationView(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 17
    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;)Z
    .locals 0

    .line 29
    instance-of p1, p3, Landroid/widget/FrameLayout;

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    .line 17
    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual/range {p0 .. p6}, Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;II[I)V
    .locals 0

    if-gez p5, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;->showBottomNavigationView(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    goto :goto_0

    :cond_0
    if-lez p5, :cond_1

    .line 44
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;->hideBottomNavigationView(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 17
    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual/range {p0 .. p5}, Lcom/floatingtunes/youtubeplayer/topmusic/main/BottomNavigationBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
