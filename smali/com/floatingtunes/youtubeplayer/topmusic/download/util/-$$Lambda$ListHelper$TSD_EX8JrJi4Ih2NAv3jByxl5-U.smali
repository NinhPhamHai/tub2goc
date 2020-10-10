.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ListHelper$TSD_EX8JrJi4Ih2NAv3jByxl5-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ListHelper$TSD_EX8JrJi4Ih2NAv3jByxl5-U;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ListHelper$TSD_EX8JrJi4Ih2NAv3jByxl5-U;->f$0:Z

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->lambda$sortStreamList$0(ZLorg/schabi/newpipe/extractor/stream/VideoStream;Lorg/schabi/newpipe/extractor/stream/VideoStream;)I

    move-result p1

    return p1
.end method
