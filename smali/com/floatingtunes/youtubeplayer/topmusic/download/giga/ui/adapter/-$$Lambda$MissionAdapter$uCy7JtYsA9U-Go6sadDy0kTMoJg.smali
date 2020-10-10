.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

.field private final synthetic f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->lambda$showError$0$MissionAdapter(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V

    return-void
.end method
