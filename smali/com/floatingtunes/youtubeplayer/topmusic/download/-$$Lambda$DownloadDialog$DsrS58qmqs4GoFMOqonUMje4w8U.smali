.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

.field private final synthetic f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

.field private final synthetic f$2:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

.field private final synthetic f$3:Landroid/net/Uri;

.field private final synthetic f$4:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/net/Uri;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$2:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$4:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    iput-object p6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$1:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$2:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$4:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;->f$6:Ljava/lang/String;

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->lambda$checkSelectedDownload$6$DownloadDialog(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/net/Uri;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
