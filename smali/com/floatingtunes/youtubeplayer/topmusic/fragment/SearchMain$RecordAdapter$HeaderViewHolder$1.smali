.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;

.field final synthetic val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;->val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;->onHistoryKeyClick(Ljava/lang/String;)V

    return-void
.end method
