.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

.field private final synthetic f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0, v1, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->lambda$checkSelectedDownload$5$DownloadDialog(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
