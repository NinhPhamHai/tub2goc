.class public Lch/blinkenlights/android/vanilla/TabOrderActivity;
.super Landroid/app/Activity;
.source "TabOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# instance fields
.field private mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

.field private mList:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->getTabIds()[I

    move-result-object v0

    .line 172
    aget v1, v0, p1

    if-le p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr p1, p2

    .line 175
    invoke-static {v0, p2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    sub-int v3, p2, p1

    .line 177
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :goto_0
    aput v1, v0, p2

    .line 181
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->save()V

    .line 182
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public load()V
    .locals 7

    .line 127
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->TAB_ORDER:Ljava/lang/String;

    const-string v2, "tab_order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 130
    new-array v1, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x80

    if-eq v4, v2, :cond_2

    .line 132
    aget-char v6, v0, v4

    if-ge v6, v5, :cond_0

    add-int/lit8 v6, v6, -0x7f

    neg-int v6, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x80

    :goto_1
    if-lt v6, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 138
    :cond_1
    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    .line 142
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-virtual {v4, v1}, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->setTabIds([I)V

    .line 143
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mList:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v4, 0x0

    :goto_3
    if-eq v4, v2, :cond_4

    .line 145
    aget-char v6, v0, v4

    if-lt v6, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v1, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 152
    :cond_5
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->restoreDefault()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 84
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->done:I

    if-ne p1, v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->restore_default:I

    if-ne p1, v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->restoreDefault()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BackActionBar:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->tabs:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 55
    sget p1, Lch/blinkenlights/android/vanilla/R$layout;->tab_order:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    new-instance p1, Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-direct {p1, p0}, Lch/blinkenlights/android/vanilla/TabOrderAdapter;-><init>(Lch/blinkenlights/android/vanilla/TabOrderActivity;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    .line 58
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    .line 59
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 62
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mList:Lcom/mobeta/android/dslv/DragSortListView;

    .line 63
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->load()V

    .line 65
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->done:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->restore_default:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->save()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public restoreDefault()V
    .locals 3

    .line 96
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    sget-object v1, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_ORDER:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->setTabIds([I)V

    .line 97
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mList:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 99
    sget-object v2, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_VISIBILITY:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/TabOrderActivity;->save()V

    return-void
.end method

.method public save()V
    .locals 6

    .line 109
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mAdapter:Lch/blinkenlights/android/vanilla/TabOrderAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->getTabIds()[I

    move-result-object v0

    .line 110
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TabOrderActivity;->mList:Lcom/mobeta/android/dslv/DragSortListView;

    const/16 v2, 0x8

    .line 111
    new-array v3, v2, [C

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v2, :cond_1

    .line 113
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget v5, v0, v4

    add-int/lit16 v5, v5, 0x80

    goto :goto_1

    :cond_0
    aget v5, v0, v4

    rsub-int/lit8 v5, v5, 0x7f

    :goto_1
    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    const-string v2, "tab_order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
