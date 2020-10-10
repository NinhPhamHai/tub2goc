.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 346
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->seekTo(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    return-void
.end method
