.class public Lcom/mobeta/android/dslv/DragSortItemViewCheckable;
.super Lcom/mobeta/android/dslv/DragSortItemView;
.source "DragSortItemViewCheckable.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 3

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 36
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 37
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 53
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    :cond_0
    return-void
.end method
