<template>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div class="dialog-header">
                    <div class="dialog-close-button" style="display: block">
                        <button class="close" aria-label="close">
                            <i class="fa fa-times-circle-o"></i>
                        </button>
                    </div>
                    <div
                        class="dialog-title"
                        id="e54fc415-8e6e-4e9c-9674-25a9b57654db_title"
                    ></div>
                </div>
            </div>
            <div class="modal-body">
                <div class="dialog-body">
                    <div class="dialog-message">
                        <div class="modalPadding">
                            <form name="section_edit">
                                <div class="form-group">
                                    <label for="title" class="control-label"
                                        >Title</label
                                    ><input
                                        class="form-control"
                                        id="title"
                                        name="title"
                                        type="text"
                                        value="Cocktails"
                                    />
                                </div>
                                <div class="form-group">
                                    <label for="subtitle" class="control-label"
                                        >Subtitle</label
                                    ><textarea
                                        class="form-control"
                                        rows="3"
                                        id="subtitle"
                                        name="subtitle"
                                        type="text"
                                    ></textarea>
                                </div>
                                <div class="row regular">
                                    <div class="col-6-sm">
                                        <div class="form-group">
                                            <label
                                                for="title"
                                                class="control-label"
                                                >Section Price</label
                                            ><input
                                                class="form-control"
                                                id="section_price"
                                                name="section_price"
                                                type="text"
                                                value=""
                                            />
                                        </div>
                                    </div>
                                    <div class="col-6-sm">
                                        <div class="form-group">
                                            <label
                                                class="control-label selectControlIcon"
                                                for="origem"
                                                >Style</label
                                            ><select
                                                id="style"
                                                name="style"
                                                class="form-control"
                                            >
                                                <option value="No_Style">
                                                    No_Style
                                                </option>
                                                <option value="No_Style">
                                                    No_Style
                                                </option>
                                                <option value="Boxed">
                                                    Boxed
                                                </option>
                                                <option value="Orange_Box">
                                                    Orange_Box
                                                </option>
                                                <option value="Side_by_Side">
                                                    Side_by_Side
                                                </option>
                                                <option value="Small_Title">
                                                    Small_Title
                                                </option>
                                                <option value="Short_Spaces">
                                                    Short_Spaces
                                                </option>
                                                <option value="BoxedCocktails">
                                                    BoxedCocktails
                                                </option>
                                                <option value="BoxedSweets">
                                                    BoxedSweets
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="display: block">
                <div class="dialog-footer">
                    <div class="dialog-footer-buttons">
                        <button
                            class="btn btn-default"
                            id="d5155e64-ac34-4842-9da4-4d453e4b3548"
                        >
                            Cancel</button
                        ><button
                            class="btn btn-primary"
                            id="e250b42c-a34c-4742-969c-7c7d24970eec"
                        >
                            Ok
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {};
</script>
