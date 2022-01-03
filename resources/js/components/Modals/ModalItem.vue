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
            id="a957f419-f6b7-4e40-8ed6-b03b2631b2e4_title"
          ></div>
        </div>
      </div>
      <div class="modal-body">
        <div class="dialog-body">
          <div class="dialog-message">
            <div class="modalPadding">
              <form name="item_edit">
                <div class="form-group">
                  <label for="title" class="control-label">Title</label
                  ><input
                    class="form-control"
                    id="title"
                    name="title"
                    type="text"
                    value="Chips &amp; Queso"
                  />
                </div>
                <div class="form-group">
                  <label for="title" class="control-label">Price</label
                  ><input
                    class="form-control"
                    id="price"
                    name="price"
                    type="text"
                    value=""
                    aria-describedby="help_price"
                  /><span id="help_price" class="help-block"
                    >Use "|" for items with multiple prices</span
                  >
                </div>
                <div class="form-group">
                  <label for="subtitle" class="control-label">Subtitle</label
                  ><textarea
                    class="form-control"
                    rows="3"
                    id="subtitle"
                    name="subtitle"
                    type="text"
                  >
Spicy cheese dip blended with onion, sweet pepper, jalapenos, and cilantro, topped with crumbled blue cheese &amp; panko breadcrumbs torched. Assorted homemade chips. Cassava, plantain, tortilla</textarea
                  >
                </div>
                <div class="form-group">
                  <label for="modifier" class="control-label">Modifier</label
                  ><input
                    class="form-control"
                    id="modifier"
                    name="modifier"
                    type="text"
                    value=""
                  />
                </div>
                <div class="form-group">
                  <label for="mod_text" class="control-label"
                    >Modifier Text</label
                  ><input
                    class="form-control"
                    id="mod_text"
                    name="mod_text"
                    type="text"
                    value=""
                  />
                </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <div class="checkbox">
                        <label class="control-label"
                          ><input
                            type="checkbox"
                            id="notice"
                            name="notice"
                            value="veg"
                            undefined=""
                          />Vegetarian</label
                        >
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <div class="checkbox">
                        <label class="control-label"
                          ><input
                            type="checkbox"
                            id="notice"
                            name="notice"
                            value="gf"
                            undefined=""
                          />Gluten Free</label
                        >
                      </div>
                    </div>
                  </div>
                  <div class="row"></div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label
                        class="control-label selectControlIcon"
                        for="origem"
                        >Style</label
                      ><select id="style" name="style" class="form-control">
                        <option value="No_Style">No_Style</option>
                        <option value="No_Style">No_Style</option>
                        <option value="Lowercase">Lowercase</option>
                        <option value="No_Bold">No_Bold</option>
                        <option value="No_Title">No_Title</option>
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
        <div class="bootstrap-dialog-footer">
          <div class="bootstrap-dialog-footer-buttons">
            <button
              class="btn btn-default"
              id="88cac2b8-1670-4446-9a3b-d83e8e27c1b6"
            >
              Cancel</button
            ><button
              class="btn btn-primary"
              id="5a78238f-6995-426e-bec4-795e02365b31"
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
export default {

}
</script>