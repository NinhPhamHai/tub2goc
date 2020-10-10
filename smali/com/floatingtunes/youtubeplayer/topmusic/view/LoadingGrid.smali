.class public Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LoadingGrid.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I

.field private top:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spanCount:I

    .line 19
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spacing:I

    .line 20
    iput-boolean p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 34
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 35
    iget p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spanCount:I

    rem-int p4, p2, p3

    .line 37
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, v0

    .line 39
    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p3, :cond_0

    .line 42
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 44
    :cond_0
    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 46
    :cond_1
    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->spacing:I

    mul-int v0, p4, p2

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p2

    .line 47
    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 54
    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method
