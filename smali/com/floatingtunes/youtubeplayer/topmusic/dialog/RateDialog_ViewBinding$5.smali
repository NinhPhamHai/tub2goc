.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RateDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
