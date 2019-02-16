package steps;

import com.snapbytes.snaptest.page.DefaultPageOptions;
import com.snapbytes.snaptest.page.Page;
import com.snapbytes.snaptest.page.PageElementType;
import com.snapbytes.snaptest.page.PageOptionsKey;

@PageOptionsKey("google")
public class GooglePageOptions extends DefaultPageOptions {

    @Override
    public String translateElementKey(String elementKey, PageElementType elementType) {
        elementKey = elementKey.replace(' ','-');
        return super.translateElementKey(elementKey, elementType);
    }

    @Override
    public void waitForUi(Page page) {
        super.waitForUi(page);
    }
}
