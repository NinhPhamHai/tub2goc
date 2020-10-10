.class public abstract Lch/blinkenlights/android/vanilla/SortableAdapter;
.super Landroid/widget/BaseAdapter;
.source "SortableAdapter.java"


# instance fields
.field mSortEntries:[I

.field mSortMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getIndexForSortMode(I)I
    .locals 0

    if-gez p1, :cond_0

    not-int p1, p1

    :cond_0
    return p1
.end method


# virtual methods
.method public abstract getDefaultSortMode()I
.end method

.method public getSortEntries()[I
    .locals 1

    .line 48
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    return-object v0
.end method

.method public getSortMode()I
    .locals 1

    .line 68
    iget v0, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortMode:I

    return v0
.end method

.method public getSortModeIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortMode:I

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getIndexForSortMode(I)I

    move-result v0

    return v0
.end method

.method public abstract getSortSettingsKey()Ljava/lang/String;
.end method

.method public isSortDescending()Z
    .locals 1

    .line 82
    iget v0, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortMode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSortMode(I)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getIndexForSortMode(I)I

    move-result v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortMode:I

    return-void
.end method
