.class public abstract Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.super Ljava/lang/Object;
.source "InfoItemsCollector.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/Collector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "E::",
        "Lorg/schabi/newpipe/extractor/InfoItemExtractor;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/schabi/newpipe/extractor/Collector<",
        "TI;TE;>;"
    }
.end annotation


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final serviceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    .line 41
    iput p1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    return-void
.end method


# virtual methods
.method protected addError(Ljava/lang/Exception;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    return v0
.end method
