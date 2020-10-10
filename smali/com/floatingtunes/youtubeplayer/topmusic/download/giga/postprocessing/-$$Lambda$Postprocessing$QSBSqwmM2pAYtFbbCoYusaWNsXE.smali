.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$QSBSqwmM2pAYtFbbCoYusaWNsXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;


# instance fields
.field private final synthetic f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;


# direct methods
.method public synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$QSBSqwmM2pAYtFbbCoYusaWNsXE;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$QSBSqwmM2pAYtFbbCoYusaWNsXE;->f$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->lambda$run$1$Postprocessing(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method
