.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Minf"
.end annotation


# instance fields
.field public $mhd:[B

.field public dinf:[B

.field public stbl_stsd:[B

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
