.class Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;
.super Ljava/lang/Object;
.source "NewFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mOutsideListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
