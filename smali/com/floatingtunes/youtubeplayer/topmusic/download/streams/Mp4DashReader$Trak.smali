.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Trak"
.end annotation


# instance fields
.field public edst_elst:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

.field public mdia:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

.field public tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
