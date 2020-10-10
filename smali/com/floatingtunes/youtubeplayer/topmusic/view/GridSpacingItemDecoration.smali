.class public Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I

.field private top:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->spanCount:I

    .line 20
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->spacing:I

    .line 21
    iput-boolean p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 33
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 34
    iget p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->spanCount:I

    rem-int/2addr p2, p3

    .line 36
    iget-boolean p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz p4, :cond_0

    .line 37
    iget p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->spacing:I

    mul-int v0, p2, p4

    div-int/2addr v0, p3

    sub-int v0, p4, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int p2, p2, p4

    .line 38
    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 43
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 45
    :cond_0
    iget p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->spacing:I

    mul-int v0, p2, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int p2, p2, p4

    .line 46
    div-int/2addr p2, p3

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 53
    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method
