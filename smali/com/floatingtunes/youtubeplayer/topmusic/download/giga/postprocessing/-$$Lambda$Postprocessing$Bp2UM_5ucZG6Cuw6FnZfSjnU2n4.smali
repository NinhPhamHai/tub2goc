.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;


# instance fields
.field private final synthetic f$0:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;


# direct methods
.method public synthetic constructor <init>([Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;->f$0:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;

    return-void
.end method


# virtual methods
.method public final check()J
    .locals 2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;->f$0:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->lambda$run$0([Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;)J

    move-result-wide v0

    return-wide v0
.end method
