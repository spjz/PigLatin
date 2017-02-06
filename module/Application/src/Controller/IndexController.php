<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View;
use Zend\View\Model\ViewModel;
use Zend\Http\Request;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
	    $input = htmlentities($this->params()->fromPost('input'));

	    if ($input)
	    {
		    return new ViewModel(
		    	[
		    		'input' => $input,
				    'output' => $this->translate($input)
			    ]
		    );
	    }
	    return new ViewModel();
    }

    private function translate($input)
    {
    	$wordEnd = "ay";
    	$phrase = explode(" ", $input);
    	$phraseLength = count($phrase);

    	foreach($phrase as $index => $word)
	    {
	    	$wordLength = strlen($word);
	    	$firstVowel = strcspn(strtolower($word), "aeiou");
	    	$firstLetter = substr(strtolower($word), 0, $firstVowel);
	    	$punctuation = substr($word, $wordLength - 1, $wordLength);

	    	if ($wordLength > 2)
		    {
			    if (preg_match("/(\?|\.|\,|\!)$/", $word))
			    {
				    $word = substr($word, 0, $wordLength - 1);
				    if ($firstVowel > 0)
				    {
					    $translation[$index] = substr($word, $firstVowel) . $firstLetter . $wordEnd . $punctuation;
				    }
				    else
				    {
					    $translation[$index] = $word . $wordEnd . $punctuation;
				    }
			    }
			    else
			    {
				    if ($firstVowel > 0)
				    {
					    $translation[$index] = substr($word, $firstVowel) . $firstLetter . $wordEnd;
				    }
				    else
				    {
					    $translation[$index] = $word . $wordEnd;
				    }
			    }
		    }
		    else
		    {
			    $translation[$index] = $word;
		    }

	    }

	    return $translation;

    }

}
