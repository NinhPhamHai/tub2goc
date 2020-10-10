.class Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity$1;
.super Ljava/lang/Object;
.source "BlcakgroundActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;

    invoke-direct {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;-><init>()V

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->closePower(Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;)V

    const/4 p1, 0x0

    return p1
.end method
