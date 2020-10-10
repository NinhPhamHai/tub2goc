.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BottomMoreDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->onMLlAddPlaylistClicked()V

    return-void
.end method
