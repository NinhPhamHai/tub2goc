.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->onMBtnPlaymodeClicked()V

    return-void
.end method
